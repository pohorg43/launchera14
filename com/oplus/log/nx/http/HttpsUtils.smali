.class public Lcom/oplus/log/nx/http/HttpsUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static myX509TrustManager:Ljavax/net/ssl/TrustManager;

.field public static pattern:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "^https?://[\\w\\-]+(\\.[\\w\\-]+)+([\\w\\-.,@?^=%&:/~+#]*[\\w\\-@?^=%&/~+#])?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oplus/log/nx/http/HttpsUtils;->pattern:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/oplus/log/nx/http/HttpsUtils$1;

    invoke-direct {v0}, Lcom/oplus/log/nx/http/HttpsUtils$1;-><init>()V

    sput-object v0, Lcom/oplus/log/nx/http/HttpsUtils;->myX509TrustManager:Ljavax/net/ssl/TrustManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToUrlParams(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_54

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    goto :goto_54

    :cond_a
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v0, ""

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "&"

    invoke-static {v0, v1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_4c
    const-string p0, "linkParams : "

    const-string v1, "HttpsUtils"

    invoke-static {p0, v0, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_54
    :goto_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized downloadHttp(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 9

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/oplus/log/nx/http/NxResponse;

    const/16 v2, 0x191

    invoke-direct {v1, v2}, Lcom/oplus/log/nx/http/NxResponse;-><init>(I)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getNxFile()Lcom/oplus/log/nx/http/NxFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/log/nx/http/NxFile;->getPath()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/log/nx/http/HttpsUtils;->convertToUrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_cf

    :try_start_19
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_37
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_7a

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_7a

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    :cond_7a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/oplus/log/nx/http/NxResponse;->setCode(I)V
    :try_end_88
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_88} :catch_c8
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_88} :catch_c3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_88} :catch_be
    .catchall {:try_start_19 .. :try_end_88} :catchall_bc

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_b8

    if-nez p0, :cond_90

    monitor-exit v0

    return-object v1

    :cond_90
    :try_start_90
    invoke-virtual {v2}, Lcom/oplus/log/nx/http/NxFile;->getAbosulteName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_9d
    invoke-virtual {p0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_b3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/oplus/log/nx/http/NxResponse;->setFile(Ljava/io/File;)V

    goto :goto_b8

    :cond_b3
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_9d

    :cond_b8
    :goto_b8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_bb
    .catch Ljava/net/MalformedURLException; {:try_start_90 .. :try_end_bb} :catch_c8
    .catch Ljava/net/ProtocolException; {:try_start_90 .. :try_end_bb} :catch_c3
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_bb} :catch_be
    .catchall {:try_start_90 .. :try_end_bb} :catchall_bc

    goto :goto_cc

    :catchall_bc
    move-exception p0

    goto :goto_ce

    :catch_be
    move-exception p0

    :try_start_bf
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cc

    :catch_c3
    move-exception p0

    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_cc

    :catch_c8
    move-exception p0

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_cc
    .catchall {:try_start_bf .. :try_end_cc} :catchall_bc

    :goto_cc
    monitor-exit v0

    return-object v1

    :goto_ce
    :try_start_ce
    throw p0
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized downloadRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 4

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/oplus/log/nx/http/NxResponse;

    const/16 v2, 0x191

    invoke-direct {v1, v2}, Lcom/oplus/log/nx/http/NxResponse;-><init>(I)V

    invoke-static {p0}, Lcom/oplus/log/nx/http/HttpsUtils;->downloadHttp(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendHttp(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 10

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/oplus/log/nx/http/NxResponse;

    const/16 v2, 0x191

    invoke-direct {v1, v2}, Lcom/oplus/log/nx/http/NxResponse;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/log/nx/http/HttpsUtils;->convertToUrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_171

    :try_start_13
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "httpsConn"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request urls : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_47
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_8a

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_8a

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    :cond_8a
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_a1
    const/16 v4, 0x1388

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_da

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_c5
    invoke-virtual {v5, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_d1

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_c5

    :cond_d1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_da
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_fa

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_fa
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/oplus/log/nx/http/NxResponse;->setCode(I)V

    const-string v4, "httpsConn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/16 v5, 0xc8

    if-ne v5, p0, :cond_157

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const-string v5, "HLog_upload"

    const-string v6, "Begin upload"

    invoke-static {v5, v6}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_134
    if-eqz p0, :cond_14d

    if-eqz v2, :cond_147

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_147
    move-object v2, p0

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    goto :goto_134

    :cond_14d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    const-string p0, "HLog_upload"

    const-string v4, "upload finish"

    invoke-static {p0, v4}, Lcom/oplus/log/HLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_157
    invoke-virtual {v1, v2}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15d
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_15d} :catch_16a
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_15d} :catch_165
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_15d} :catch_160
    .catchall {:try_start_13 .. :try_end_15d} :catchall_15e

    goto :goto_16e

    :catchall_15e
    move-exception p0

    goto :goto_170

    :catch_160
    move-exception p0

    :try_start_161
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16e

    :catch_165
    move-exception p0

    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_16e

    :catch_16a
    move-exception p0

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_16e
    .catchall {:try_start_161 .. :try_end_16e} :catchall_15e

    :goto_16e
    monitor-exit v0

    return-object v1

    :goto_170
    :try_start_170
    throw p0
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_171

    :catchall_171
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendHttpPOST(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 9

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Lcom/oplus/log/nx/http/NxResponse;

    const/16 v3, 0x190

    invoke-direct {v2, v3}, Lcom/oplus/log/nx/http/NxResponse;-><init>(I)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/log/nx/http/HttpsUtils;->convertToUrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11b

    :try_start_13
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_31
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_6c

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_6c

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_6c
    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v6, "Content-Type"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_8a
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_8a} :catch_110
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_8a} :catch_10b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_8a} :catch_106
    .catchall {:try_start_13 .. :try_end_8a} :catchall_104

    if-eqz v6, :cond_91

    :try_start_8c
    invoke-virtual {v2, v1}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_11b

    monitor-exit v0

    return-object v2

    :cond_91
    :try_start_91
    const-string v6, "json"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_aa

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_aa
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/log/nx/http/NxResponse;->setCode(I)V

    const-string v4, "httpsConn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "response code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc8

    if-ne v4, v3, :cond_100

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    :goto_e3
    if-eqz v3, :cond_fd

    if-eqz v1, :cond_f7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f8

    :cond_f7
    move-object v1, v3

    :goto_f8
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_e3

    :cond_fd
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_100
    .catch Ljava/net/MalformedURLException; {:try_start_91 .. :try_end_100} :catch_110
    .catch Ljava/net/ProtocolException; {:try_start_91 .. :try_end_100} :catch_10b
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_100} :catch_106
    .catchall {:try_start_91 .. :try_end_100} :catchall_104

    :cond_100
    :goto_100
    :try_start_100
    invoke-virtual {v2, v1}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_11b

    goto :goto_115

    :catchall_104
    move-exception p0

    goto :goto_117

    :catch_106
    move-exception p0

    :try_start_107
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_100

    :catch_10b
    move-exception p0

    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_100

    :catch_110
    move-exception p0

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_114
    .catchall {:try_start_107 .. :try_end_114} :catchall_104

    goto :goto_100

    :goto_115
    monitor-exit v0

    return-object v2

    :goto_117
    :try_start_117
    invoke-virtual {v2, v1}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V

    throw p0
    :try_end_11b
    .catchall {:try_start_117 .. :try_end_11b} :catchall_11b

    :catchall_11b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendHttpPOST(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p2}, Lcom/oplus/log/nx/http/HttpsUtils;->convertToUrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_ec

    const/4 v2, 0x1

    const/16 v3, 0xc8

    const/4 v4, 0x0

    :try_start_c
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_26
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, v5, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    :cond_5d
    const-string p1, "POST"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance p1, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    if-eqz p3, :cond_73

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_73
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0
    :try_end_8b
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_8b} :catch_e0
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_8b} :catch_da
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_8b} :catch_d3
    .catchall {:try_start_c .. :try_end_8b} :catchall_ec

    :try_start_8b
    const-string p2, "httpsConn"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response code : "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, p0, :cond_e6

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    :goto_a7
    if-eqz p2, :cond_c0

    if-eqz v1, :cond_ba

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_ba
    move-object v1, p2

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    goto :goto_a7

    :cond_c0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_c3
    .catch Ljava/net/MalformedURLException; {:try_start_8b .. :try_end_c3} :catch_ce
    .catch Ljava/net/ProtocolException; {:try_start_8b .. :try_end_c3} :catch_c9
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_c3} :catch_c4
    .catchall {:try_start_8b .. :try_end_c3} :catchall_ec

    goto :goto_e6

    :catch_c4
    move-exception p1

    move-object v6, p1

    move p1, p0

    move-object p0, v6

    goto :goto_d5

    :catch_c9
    move-exception p1

    move-object v6, p1

    move p1, p0

    move-object p0, v6

    goto :goto_dc

    :catch_ce
    move-exception p1

    move-object v6, p1

    move p1, p0

    move-object p0, v6

    goto :goto_e2

    :catch_d3
    move-exception p0

    move p1, v4

    :goto_d5
    :try_start_d5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_d8
    move p0, p1

    goto :goto_e6

    :catch_da
    move-exception p0

    move p1, v4

    :goto_dc
    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_d8

    :catch_e0
    move-exception p0

    move p1, v4

    :goto_e2
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_d5 .. :try_end_e5} :catchall_ec

    goto :goto_d8

    :cond_e6
    :goto_e6
    if-ne p0, v3, :cond_e9

    goto :goto_ea

    :cond_e9
    move v2, v4

    :goto_ea
    monitor-exit v0

    return v2

    :catchall_ec
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendHttps(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 11

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/oplus/log/nx/http/NxResponse;

    const/16 v2, 0x190

    invoke-direct {v1, v2}, Lcom/oplus/log/nx/http/NxResponse;-><init>(I)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/log/nx/http/HttpsUtils;->convertToUrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15b

    const/4 v3, 0x0

    :try_start_13
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljavax/net/ssl/TrustManager;

    sget-object v7, Lcom/oplus/log/nx/http/HttpsUtils;->myX509TrustManager:Ljavax/net/ssl/TrustManager;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v4, v3, v6, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_42
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_84

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_84

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_68
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_84
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v6, "POST"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    :cond_9a
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_ca

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_b9
    invoke-virtual {v5, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    const/4 v9, -0x1

    if-eq v7, v9, :cond_c4

    invoke-virtual {v4, v6, v8, v7}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_b9

    :cond_c4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_ca
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ea

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    :cond_ea
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, v5}, Lcom/oplus/log/nx/http/NxResponse;->setHeader(Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Lcom/oplus/log/nx/http/NxResponse;->setCode(I)V

    const/16 v5, 0xc8

    if-ne v5, v4, :cond_133

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    :goto_116
    if-eqz v4, :cond_130

    if-eqz v3, :cond_12a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_12b

    :cond_12a
    move-object v3, v4

    :goto_12b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_116

    :cond_130
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :cond_133
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_136
    .catch Ljava/security/KeyManagementException; {:try_start_13 .. :try_end_136} :catch_150
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_136} :catch_14b
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_136} :catch_146
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_136} :catch_141
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_136} :catch_13c
    .catchall {:try_start_13 .. :try_end_136} :catchall_13a

    :goto_136
    :try_start_136
    invoke-virtual {v1, v3}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_15b

    goto :goto_155

    :catchall_13a
    move-exception p0

    goto :goto_157

    :catch_13c
    move-exception p0

    :try_start_13d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_136

    :catch_141
    move-exception p0

    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_136

    :catch_146
    move-exception p0

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_136

    :catch_14b
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_136

    :catch_150
    move-exception p0

    invoke-virtual {p0}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_154
    .catchall {:try_start_13d .. :try_end_154} :catchall_13a

    goto :goto_136

    :goto_155
    monitor-exit v0

    return-object v1

    :goto_157
    :try_start_157
    invoke-virtual {v1, v3}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V

    throw p0
    :try_end_15b
    .catchall {:try_start_157 .. :try_end_15b} :catchall_15b

    :catchall_15b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendHttpsPOST(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 10

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/oplus/log/nx/http/NxResponse;

    const/16 v2, 0x190

    invoke-direct {v1, v2}, Lcom/oplus/log/nx/http/NxResponse;-><init>(I)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/log/nx/http/HttpsUtils;->convertToUrlParams(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_134

    const/4 v3, 0x0

    :try_start_13
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    sget-object v8, Lcom/oplus/log/nx/http/HttpsUtils;->myX509TrustManager:Ljavax/net/ssl/TrustManager;

    aput-object v8, v6, v7

    invoke-virtual {v4, v3, v6, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_42

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_42
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_84

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_84

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_68
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_84

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v8, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_68

    :cond_84
    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v6, "Content-Type"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_a1
    .catch Ljava/security/KeyManagementException; {:try_start_13 .. :try_end_a1} :catch_129
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_a1} :catch_124
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_a1} :catch_11f
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_a1} :catch_11a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_a1} :catch_115
    .catchall {:try_start_13 .. :try_end_a1} :catchall_113

    if-eqz v6, :cond_a8

    :try_start_a3
    invoke-virtual {v1, v3}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_134

    monitor-exit v0

    return-object v1

    :cond_a8
    :try_start_a8
    const-string v6, "json"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c1

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c1

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_c1
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->close()V

    new-instance p0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, v5}, Lcom/oplus/log/nx/http/NxResponse;->setHeader(Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Lcom/oplus/log/nx/http/NxResponse;->setCode(I)V

    const/16 v2, 0xc8

    if-ne v2, v4, :cond_10f

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_f3
    if-eqz v2, :cond_10c

    if-eqz v3, :cond_106

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_106
    move-object v3, v2

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_f3

    :cond_10c
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_10f
    .catch Ljava/security/KeyManagementException; {:try_start_a8 .. :try_end_10f} :catch_129
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a8 .. :try_end_10f} :catch_124
    .catch Ljava/net/MalformedURLException; {:try_start_a8 .. :try_end_10f} :catch_11f
    .catch Ljava/net/ProtocolException; {:try_start_a8 .. :try_end_10f} :catch_11a
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_10f} :catch_115
    .catchall {:try_start_a8 .. :try_end_10f} :catchall_113

    :cond_10f
    :goto_10f
    :try_start_10f
    invoke-virtual {v1, v3}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_134

    goto :goto_12e

    :catchall_113
    move-exception p0

    goto :goto_130

    :catch_115
    move-exception p0

    :try_start_116
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10f

    :catch_11a
    move-exception p0

    invoke-virtual {p0}, Ljava/net/ProtocolException;->printStackTrace()V

    goto :goto_10f

    :catch_11f
    move-exception p0

    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_10f

    :catch_124
    move-exception p0

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_10f

    :catch_129
    move-exception p0

    invoke-virtual {p0}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_12d
    .catchall {:try_start_116 .. :try_end_12d} :catchall_113

    goto :goto_10f

    :goto_12e
    monitor-exit v0

    return-object v1

    :goto_130
    :try_start_130
    invoke-virtual {v1, v3}, Lcom/oplus/log/nx/http/NxResponse;->setMessage(Ljava/lang/String;)V

    throw p0
    :try_end_134
    .catchall {:try_start_130 .. :try_end_134} :catchall_134

    :catchall_134
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendRequest(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;
    .registers 7

    const-class v0, Lcom/oplus/log/nx/http/HttpsUtils;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/oplus/log/nx/http/NxResponse;

    const/16 v2, 0x191

    invoke-direct {v1, v2}, Lcom/oplus/log/nx/http/NxResponse;-><init>(I)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b1

    if-nez p0, :cond_e

    monitor-exit v0

    return-object v1

    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_b1

    if-eqz v3, :cond_1a

    monitor-exit v0

    return-object v1

    :cond_1a
    :try_start_1a
    sget-object v3, Lcom/oplus/log/nx/http/HttpsUtils;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_3e

    const-string p0, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url format error, show : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_b1

    monitor-exit v0

    return-object v1

    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getHeader()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_96

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_6c

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    :cond_6c
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getJsonDatas()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_85

    const-string v4, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_93

    :cond_85
    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxRequest;->getNxFile()Lcom/oplus/log/nx/http/NxFile;

    move-result-object v4

    if-eqz v4, :cond_8c

    goto :goto_93

    :cond_8c
    const-string v4, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_93
    invoke-virtual {p0, v3}, Lcom/oplus/log/nx/http/NxRequest;->addHeaders(Ljava/util/Map;)Lcom/oplus/log/nx/http/NxRequest;

    :cond_96
    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-static {p0}, Lcom/oplus/log/nx/http/HttpsUtils;->sendHttp(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object v1

    goto :goto_af

    :cond_a3
    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_af

    invoke-static {p0}, Lcom/oplus/log/nx/http/HttpsUtils;->sendHttp(Lcom/oplus/log/nx/http/NxRequest;)Lcom/oplus/log/nx/http/NxResponse;

    move-result-object v1
    :try_end_af
    .catchall {:try_start_3e .. :try_end_af} :catchall_b1

    :cond_af
    :goto_af
    monitor-exit v0

    return-object v1

    :catchall_b1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
