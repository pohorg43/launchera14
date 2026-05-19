.class public Lcom/oplus/log/nx/http/HttpsClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/nx/http/INxHttpClient;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 2

    invoke-static {p1}, Lcom/oplus/log/nx/http/HttpsUtils;->downloadRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object p0

    return-object p0
.end method

.method public sendRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 2

    invoke-static {p1}, Lcom/oplus/log/nx/http/HttpsUtils;->sendRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object p0

    return-object p0
.end method
