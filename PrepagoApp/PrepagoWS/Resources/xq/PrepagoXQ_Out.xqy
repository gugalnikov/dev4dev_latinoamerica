xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://example.org/";
(:: import schema at "../wsdl/PrepagoWS_Original.wsdl" ::)
declare namespace ns2="http://ws.abctelco/";
(:: import schema at "../xsd/PrepagoWS.xsd" ::)

declare variable $PrepagoWS_Response as element() (:: schema-element(ns1:rPrep24ret) ::) external;

declare function local:func($PrepagoWS_Response as element() (:: schema-element(ns1:rPrep24ret) ::)) as element() (:: schema-element(ns2:realizarPrepagoResponse) ::) {
    <ns2:realizarPrepagoResponse>
        <folio>{fn:data($PrepagoWS_Response/ns1:return)}</folio>            
    </ns2:realizarPrepagoResponse>
};

local:func($PrepagoWS_Response)
