
<?php

use mvc\interfaces\controllerActionInterface;
use mvc\controller\controllerClass;
use mvc\config\configClass as config;
use mvc\request\requestClass as request;
use mvc\routing\routingClass as routing;
use mvc\session\sessionClass as session;
use mvc\i18n\i18nClass as i18n;

/**
 * Description of ejemploClass
 *
 *  @author Cristian Ramirez <cristianRamirezXD@outlook.es>
 */
class updateActionClass extends controllerClass implements controllerActionInterface {

    public function execute() {
        try {
            if (request::getInstance()->isMethod('POST')) {

                $id = request::getInstance()->getPost(tipoInsumoTableClass::getNameField(tipoInsumoTableClass::ID, true));
                $desc_tipo_insumo = request::getInstance()->getPost(tipoInsumoTableClass::getNameField(tipoInsumoTableClass::DESC_TIPO_INSUMO, true));
                $this->Validate($desc_tipo_insumo);
                $ids = array(
                    tipoInsumoTableClass::ID => $id
                );

                $data = array(
                    tipoInsumoTableClass::DESC_TIPO_INSUMO => $desc_tipo_insumo,
                );

                tipoInsumoTableClass::update($ids, $data);
            }
            session::getInstance()->setSuccess(i18n::__('successfulUpdate'));
            routing::getInstance()->redirect('tipoInsumo', 'index');
        } catch (PDOException $exc) {
            echo $exc->getMessage();
            echo '<br>';
            echo $exc->getTraceAsString();
        }
    }

    private function Validate($desc_tipo_insumo) {
        $bandera = FALSE;
        if (strlen($desc_tipo_insumo) > tipoInsumoTableClass::DESC_TIPO_INSUMO_LENGTH) {
            session::getInstance()->setError(i18n::__('errorLengthDescription', NULL, 'default', array('%descripcion%' => $desc_tipo_insumo, '%caracteres%' => tipoInsumoTableClass::DESC_TIPO_INSUMO_LENGTH)), 'errorDescripcion');
            $bandera = true;
            session::getInstance()->setFlash(tipoInsumoTableClass::getNameField(tipoInsumoTableClass::DESC_TIPO_INSUMO, true), true);
        }
        if (!preg_match('/^[a-zA-Z ]*$/', $desc_tipo_insumo)) {
            session::getInstance()->setError(i18n::__('errorText', NULL, 'default', array('%texto%' => $desc_tipo_insumo)), 'errorDescripcion');
            $bandera = true;
            session::getInstance()->setFlash(tipoInsumoTableClass::getNameField(tipoInsumoTableClass::DESC_TIPO_INSUMO, true), true);
        }
        if ($desc_tipo_insumo === '' or $desc_tipo_insumo === NULL) {
            session::getInstance()->setError(i18n::__('errorNull', NULL, 'default'), 'errorDescripcion');
            $bandera = true;
            session::getInstance()->setFlash(tipoInsumoTableClass::getNameField(tipoInsumoTableClass::DESC_TIPO_INSUMO, true), true);
        }
        if ($bandera === true) {
            request::getInstance()->setMethod('GET');
            request::getInstance()->addParamGet(array(tipoInsumoTableClass::ID => request::getInstance()->getPost(tipoInsumoTableClass::getNameField(tipoInsumoTableClass::ID, TRUE))));
            routing::getInstance()->forward('tipoInsumo', 'edit');
        }
    }

}
