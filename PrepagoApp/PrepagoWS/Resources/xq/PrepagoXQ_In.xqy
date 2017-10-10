xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://example.org/";
(:: import schema at "../wsdl/PrepagoWS_Original.wsdl" ::)
declare namespace ns1="http://ws.abctelco/";
(:: import schema at "../xsd/PrepagoWS.xsd" ::)

declare variable $PrepagoWS_Request as element() (:: schema-element(ns1:realizarPrepago) ::) external;

declare function local:func($PrepagoWS_Request as element() (:: schema-element(ns1:realizarPrepago) ::)) as element() (:: schema-element(ns2:rPrep24) ::) {
    <ns2:rPrep24>
        <ns2:arg0>{fn:data($PrepagoWS_Request/monto)}</ns2:arg0>
        <ns2:arg1>{fn:data($PrepagoWS_Request/idCliente)}</ns2:arg1>
    </ns2:rPrep24>
};

local:func($PrepagoWS_Request)
