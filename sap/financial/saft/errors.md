# Known Errors:
[Error "pse_not_found" in function SSFPSE_PARAMETER. Context:WSSE - Applic:WSSCRT - BL001]
[Fix]:
    - See note 2078513
    - See note 1901252 -> Setup_PT_WS.
    - See note 1901252 -> Guidelines endpoint config1_v2 and config2_v2 pdfs.

[BL001 - PRX_PROTO_NOT_SUPPORTED Proxy protocol IF_WSPROTOCOL_WS_HEADER is not available]
[Fix]:
    - SOAMANAGER has to be working
    - Activate required services in transaction SICF.

[SOAP:1023 SRT: Processing error in Internet Communication Framework: ("SSL handshake with servicos.portaldasfinancas.gov.pt:701 failed: SSSLERR_CLIENT_CERT_UNTRUSTED (-109)Client certificate verification)]
[Fix]:
    - Problem with the certificates

