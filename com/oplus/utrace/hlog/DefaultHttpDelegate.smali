.class public final Lcom/oplus/utrace/hlog/DefaultHttpDelegate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/uploader/IHttpDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/utrace/hlog/DefaultHttpDelegate$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/utrace/hlog/DefaultHttpDelegate$Companion;

.field private static final KEY_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field private static final KEY_CONSOLE:Ljava/lang/String; = "console"

.field private static final KEY_ENCRY_CLIENT_ID:Ljava/lang/String; = "encryClientId"

.field private static final KEY_END_TIME:Ljava/lang/String; = "endTime"

.field private static final KEY_EXACT_MATCH_TRACE_PKG:Ljava/lang/String; = "exactMatchTracePkg"

.field private static final KEY_FORCE:Ljava/lang/String; = "force"

.field private static final KEY_IMEI:Ljava/lang/String; = "imei"

.field private static final KEY_LEVEL:Ljava/lang/String; = "level"

.field private static final KEY_MAX_LOG_SIZE:Ljava/lang/String; = "maxLogSize"

.field private static final KEY_OPENID:Ljava/lang/String; = "openid"

.field private static final KEY_QUEUE_SIZE:Ljava/lang/String; = "queueSize"

.field private static final KEY_SAMPLE:Ljava/lang/String; = "sample"

.field private static final KEY_TIMES_PER_DAY:Ljava/lang/String; = "timesPerDay"

.field private static final KEY_TRACE_ID:Ljava/lang/String; = "traceId"

.field private static final KEY_TRACE_PKG:Ljava/lang/String; = "tracePkg"

.field private static final TAG:Ljava/lang/String; = "UTrace.Sdk.HLog.HttpDelegate"


# instance fields
.field private final logPrefix$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/utrace/hlog/DefaultHttpDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->Companion:Lcom/oplus/utrace/hlog/DefaultHttpDelegate$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/utrace/hlog/DefaultHttpDelegate$logPrefix$2;->INSTANCE:Lcom/oplus/utrace/hlog/DefaultHttpDelegate$logPrefix$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->logPrefix$delegate:Lh4/f;

    return-void
.end method

.method private final getLogPrefix()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->logPrefix$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final parseJsonStringToUserTraceConfigDto(Ljava/lang/String;)Ly3/a;
    .registers 20

    const-string v0, "imei"

    const-string v1, "openid"

    const-string v2, "sample"

    const-string v3, "queueSize"

    const-string v4, "timesPerDay"

    const-string v5, "maxLogSize"

    const-string v6, "console"

    const-string v7, "level"

    const-string v8, "exactMatchTracePkg"

    const-string v9, "endTime"

    const-string v10, "beginTime"

    const-string v11, "tracePkg"

    const-string v12, "force"

    const-string v13, "encryClientId"

    const-string v14, "traceId"

    new-instance v15, Ly3/a;

    invoke-direct {v15}, Ly3/a;-><init>()V

    move-object/from16 p0, v0

    :try_start_25
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    move-object/from16 v17, v2

    if-eqz v1, :cond_3c

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v15, Ly3/a;->a:J

    :cond_3c
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Ly3/a;->b:Ljava/lang/String;

    :cond_48
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->c:I

    :cond_54
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Ly3/a;->d:Ljava/lang/String;

    :cond_60
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v15, Ly3/a;->e:J

    :cond_6c
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v15, Ly3/a;->f:J

    :cond_78
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->g:I

    :cond_84
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->h:I

    :cond_90
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->i:I

    :cond_9c
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->j:I

    :cond_a8
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->k:I

    :cond_b4
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->l:I

    :cond_c0
    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v15, Ly3/a;->m:I

    :cond_ce
    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Ly3/a;->n:Ljava/lang/String;

    :cond_dc
    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Ly3/a;->o:Ljava/lang/String;
    :try_end_ea
    .catchall {:try_start_25 .. :try_end_ea} :catchall_eb

    goto :goto_ef

    :catchall_eb
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_ef
    :goto_ef
    return-object v15
.end method


# virtual methods
.method public checkUpload(Ljava/lang/String;)Ly3/a;
    .registers 8

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " checkUpload() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLog.HttpDelegate"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_22
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_93

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_56
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sb.toString()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_69} :catch_9d
    .catchall {:try_start_22 .. :try_end_69} :catchall_9b

    :try_start_69
    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " checkUpload() message="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_89} :catch_90
    .catchall {:try_start_69 .. :try_end_89} :catchall_9b

    if-nez v1, :cond_8c

    goto :goto_c6

    :cond_8c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_c6

    :catch_90
    move-exception p1

    move-object v0, v3

    goto :goto_9e

    :cond_93
    :try_start_93
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9b} :catch_9d
    .catchall {:try_start_93 .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception p0

    goto :goto_cb

    :catch_9d
    move-exception p1

    :goto_9e
    :try_start_9e
    sget-object v3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " checkUpload error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4, p1}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bf
    .catchall {:try_start_9e .. :try_end_bf} :catchall_9b

    if-nez v1, :cond_c2

    goto :goto_c5

    :cond_c2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_c5
    move-object v3, v0

    :goto_c6
    invoke-direct {p0, v3}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->parseJsonStringToUserTraceConfigDto(Ljava/lang/String;)Ly3/a;

    move-result-object p0

    return-object p0

    :goto_cb
    if-nez v1, :cond_ce

    goto :goto_d1

    :cond_ce
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_d1
    throw p0
.end method

.method public uploadCode(Ljava/lang/String;)Lcom/oplus/log/uploader/ResponseWrapper;
    .registers 6

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uploadCode() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLog.HttpDelegate"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1f
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_7d

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {p1, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Charset"

    const-string v3, "UTF-8"

    invoke-virtual {p1, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v3, "application/json"

    invoke-virtual {p1, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uploadCode() responseCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oplus/log/uploader/ResponseWrapper;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/oplus/log/uploader/ResponseWrapper;-><init>(I)V

    return-object v0

    :cond_7d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_85} :catch_85

    :catch_85
    move-exception p1

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " uploadCode error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/io/File;)Lcom/oplus/log/uploader/ResponseWrapper;
    .registers 11

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uploadFile() url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Sdk.HLog.HttpDelegate"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_28
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    if-eqz p1, :cond_109

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "POST"

    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Charset"

    const-string v4, "UTF-8"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-virtual {p1, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_ba

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_6c} :catch_115
    .catchall {:try_start_28 .. :try_end_6c} :catchall_111

    :try_start_6c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_71} :catch_b6
    .catchall {:try_start_6c .. :try_end_71} :catchall_b2

    const/16 p2, 0x400

    :try_start_73
    new-array p2, p2, [B

    :goto_75
    invoke-virtual {v4, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_80

    invoke-virtual {v3, p2, v1, v5}, Ljava/io/DataOutputStream;->write([BII)V

    goto :goto_75

    :cond_80
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_87} :catch_ae
    .catchall {:try_start_73 .. :try_end_87} :catchall_aa

    :try_start_87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_96
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_96

    :cond_a0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "sb.toString()"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a9} :catch_107
    .catchall {:try_start_87 .. :try_end_a9} :catchall_14d

    goto :goto_c2

    :catchall_aa
    move-exception p0

    move-object p2, v0

    goto/16 :goto_14e

    :catch_ae
    move-exception p1

    move-object p2, v0

    goto/16 :goto_119

    :catchall_b2
    move-exception p0

    move-object p2, v0

    goto/16 :goto_14f

    :catch_b6
    move-exception p1

    move-object p2, v0

    move-object v4, p2

    goto :goto_119

    :cond_ba
    :try_start_ba
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_115
    .catchall {:try_start_ba .. :try_end_bd} :catchall_111

    const-string v1, ""

    move-object p2, v0

    move-object v3, p2

    move-object v4, v3

    :goto_c2
    :try_start_c2
    sget-object v5, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uploadFile() responseCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " message="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/oplus/utrace/utils/Logs;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/oplus/log/uploader/ResponseWrapper;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    invoke-direct {v5, p1, v1}, Lcom/oplus/log/uploader/ResponseWrapper;-><init>(ILjava/lang/String;)V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_f4} :catch_107
    .catchall {:try_start_c2 .. :try_end_f4} :catchall_14d

    if-nez v4, :cond_f7

    goto :goto_fa

    :cond_f7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :goto_fa
    if-nez v3, :cond_fd

    goto :goto_100

    :cond_fd
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :goto_100
    if-nez p2, :cond_103

    goto :goto_106

    :cond_103
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :goto_106
    return-object v5

    :catch_107
    move-exception p1

    goto :goto_119

    :cond_109
    :try_start_109
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_111} :catch_115
    .catchall {:try_start_109 .. :try_end_111} :catchall_111

    :catchall_111
    move-exception p0

    move-object p2, v0

    move-object v3, p2

    goto :goto_14f

    :catch_115
    move-exception p1

    move-object p2, v0

    move-object v3, p2

    move-object v4, v3

    :goto_119
    :try_start_119
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/DefaultHttpDelegate;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " uploadFile error: "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, p1}, Lcom/oplus/utrace/utils/Logs;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13a
    .catchall {:try_start_119 .. :try_end_13a} :catchall_14d

    if-nez v4, :cond_13d

    goto :goto_140

    :cond_13d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :goto_140
    if-nez v3, :cond_143

    goto :goto_146

    :cond_143
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :goto_146
    if-nez p2, :cond_149

    goto :goto_14c

    :cond_149
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :goto_14c
    return-object v0

    :catchall_14d
    move-exception p0

    :goto_14e
    move-object v0, v4

    :goto_14f
    if-nez v0, :cond_152

    goto :goto_155

    :cond_152
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_155
    if-nez v3, :cond_158

    goto :goto_15b

    :cond_158
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    :goto_15b
    if-nez p2, :cond_15e

    goto :goto_161

    :cond_15e
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    :goto_161
    throw p0
.end method
