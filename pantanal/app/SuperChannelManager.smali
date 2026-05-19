.class public final Lpantanal/app/SuperChannelManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DECOMPRESS_SIZE:I = 0x400

.field private static final DELAY_OBSERVE_TIME:J = 0xc8L

.field public static final INSTANCE:Lpantanal/app/SuperChannelManager;

.field private static final KEY_SUPPORT_SUPER_CHANNEL:Ljava/lang/String; = "supportSuperChannel"

.field private static final OBSERVE:Ljava/lang/String; = "observe:"

.field private static final TAG:Ljava/lang/String; = "SuperChannelManager"

.field private static final TAG_CARD_DATA:Ljava/lang/String; = "data"

.field private static final TAG_COMPRESS:Ljava/lang/String; = "compress"

.field private static final TAG_FORCE_CHANGE:Ljava/lang/String; = "forceChangeCardUI"

.field private static final TAG_WIDGET_CODE:Ljava/lang/String; = "cardId"

.field private static final superChannelObserveMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lh4/z;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/SuperChannelManager;

    invoke-direct {v0}, Lpantanal/app/SuperChannelManager;-><init>()V

    sput-object v0, Lpantanal/app/SuperChannelManager;->INSTANCE:Lpantanal/app/SuperChannelManager;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lpantanal/app/SuperChannelManager;->superChannelObserveMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$jsonToPB(Lpantanal/app/SuperChannelManager;[B)Lpantanal/app/nano/UIDataProto;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/SuperChannelManager;->jsonToPB([B)Lpantanal/app/nano/UIDataProto;

    move-result-object p0

    return-object p0
.end method

.method private final decompressData(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string v1, "+ deCompress src size is "

    invoke-static {v1, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SuperChannelManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    new-instance p1, Ljava/util/zip/Inflater;

    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    invoke-virtual {p1, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    const/16 p0, 0x400

    new-array v0, p0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_30
    :try_start_30
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->finished()Z

    move-result p0

    if-nez p0, :cond_3f

    invoke-virtual {p1, v0}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_30

    :cond_3f
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->end()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_47

    return-object p0

    :catchall_47
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_6c

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "deCompress has error: "

    invoke-static {p1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SuperChannelManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_6c
    const/4 p0, 0x0

    return-object p0
.end method

.method private final jsonToPB([B)Lpantanal/app/nano/UIDataProto;
    .registers 14

    sget-object v11, Ly8/c;->a:Ly8/c;

    array-length v0, p1

    const-string v1, "begin change json to PB data.  params size:  "

    invoke-static {v1, v0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "SuperChannelManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lpantanal/app/nano/UIDataProto;

    invoke-direct {p1}, Lpantanal/app/nano/UIDataProto;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "compress"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    invoke-direct {p0, v1}, Lpantanal/app/SuperChannelManager;->decompressData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3c
    const-string p0, "cardId"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, p1, Lpantanal/app/nano/UIDataProto;->cardId:I

    if-eqz v1, :cond_50

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "getBytes(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_51

    :cond_50
    const/4 p0, 0x0

    :goto_51
    iput-object p0, p1, Lpantanal/app/nano/UIDataProto;->data:[B

    const-string p0, "forceChangeCardUI"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, p1, Lpantanal/app/nano/UIDataProto;->forceChangeCardUI:Z

    iget-object p0, p1, Lpantanal/app/nano/UIDataProto;->data:[B

    array-length p0, p0

    const-string v0, "get UIDataProto. The data size is: "

    invoke-static {v0, p0}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SuperChannelManager"

    move-object v0, v11

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final observeBySuperChannel(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lpantanal/app/bean/SuperChannelInfo;Ll4/d;)Ljava/lang/Object;
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lh4/z;",
            ">;",
            "Lpantanal/app/bean/SuperChannelInfo;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    instance-of v4, v3, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;

    if-eqz v4, :cond_1b

    move-object v4, v3

    check-cast v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;

    iget v5, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->label:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_1b

    sub-int/2addr v5, v6

    iput v5, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->label:I

    goto :goto_22

    :cond_1b
    new-instance v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v3}, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;-><init>(Lpantanal/app/SuperChannelManager;Ll4/d;)V

    :goto_22
    iget-object v3, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->result:Ljava/lang/Object;

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v6, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->label:I

    const-string v7, "   cardViewInfo:  "

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v6, :cond_61

    if-ne v6, v9, :cond_59

    iget-object v0, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$6:Ljava/lang/Object;

    check-cast v0, [B

    iget-object v1, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$5:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lcom/oplus/channel/server/ClientProxy;

    iget-object v5, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lpantanal/app/bean/SuperChannelInfo;

    iget-object v9, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lpantanal/app/bean/SuperChannelInfo;

    iget-object v4, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v10, v0

    move-object v0, v4

    move-object/from16 v22, v6

    move-object v6, v1

    move-object v1, v2

    move-object/from16 v2, v22

    goto/16 :goto_152

    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    invoke-static {v3}, Lh4/l;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v3

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getSupportSuperChannel()Z

    move-result v3

    if-nez v3, :cond_87

    sget-object v10, Ly8/c;->a:Ly8/c;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    const-string v11, "SuperChannelManager"

    const-string v12, "observeBySuperChannel, not support super channel."

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_87
    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getServerBusiness()Lcom/oplus/channel/server/IServerBusiness;

    move-result-object v3

    if-eqz v3, :cond_92

    sget-object v6, Lpantanal/app/SuperChannelProxyManager;->INSTANCE:Lpantanal/app/SuperChannelProxyManager;

    invoke-virtual {v6, v3}, Lpantanal/app/SuperChannelProxyManager;->setServerBusiness(Lcom/oplus/channel/server/IServerBusiness;)V

    :cond_92
    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_a5

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v6

    invoke-virtual {v6}, Lpantanal/app/bean/CardViewInfo;->getSupportSuperChannel()Z

    move-result v6

    const-string v10, "supportSuperChannel"

    invoke-virtual {v3, v10, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_a5
    new-instance v3, Lpantanal/app/SuperChannelManager$observeBySuperChannel$2$superCallback$1;

    const-string v6, "observeBySuperChannel"

    move-object/from16 v10, p3

    invoke-direct {v3, v6, v1, v10}, Lpantanal/app/SuperChannelManager$observeBySuperChannel$2$superCallback$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Lpantanal/app/SuperChannelManager;->superChannelObserveMap:Ljava/util/Map;

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getEntrance()Lpantanal/app/bean/Entrance;

    move-result-object v1

    invoke-virtual {v1}, Lpantanal/app/bean/Entrance;->getEntranceType()I

    move-result v1

    sget-object v6, Lpantanal/app/SuperChannelProxyManager;->INSTANCE:Lpantanal/app/SuperChannelProxyManager;

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v10

    invoke-virtual {v10}, Lpantanal/app/bean/CardViewInfo;->getComponentName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_cd

    const-string v10, ""

    :cond_cd
    invoke-virtual {v6, v10, v1}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v11

    invoke-virtual {v6, v10, v1, v11}, Lpantanal/app/SuperChannelProxyManager;->getClientProxy(Ljava/lang/String;ILpantanal/app/bean/CardViewInfo;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object v1

    const-string v6, "observe:"

    invoke-static {v6, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Ly8/c;->a:Ly8/c;

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v11

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_ed

    move v12, v9

    goto :goto_ee

    :cond_ed
    const/4 v12, 0x0

    :goto_ee
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "super channel send data to support sdk:  callbackId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "  has json params:   "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0xfc

    const/16 v20, 0x0

    const-string v11, "SuperChannelManager"

    invoke-static/range {v10 .. v20}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-virtual/range {p4 .. p4}, Lpantanal/app/bean/SuperChannelInfo;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_137

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_137

    sget-object v11, Lk7/b;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    const-string v11, "getBytes(...)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_138

    :cond_137
    move-object v10, v8

    :goto_138
    const-wide/16 v11, 0xc8

    iput-object v0, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$2:Ljava/lang/Object;

    iput-object v3, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$3:Ljava/lang/Object;

    iput-object v1, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$5:Ljava/lang/Object;

    iput-object v10, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->L$6:Ljava/lang/Object;

    iput v9, v4, Lpantanal/app/SuperChannelManager$observeBySuperChannel$1;->label:I

    invoke-static {v11, v12, v4}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_151

    return-object v5

    :cond_151
    move-object v5, v3

    :goto_152
    sget-object v3, Ly8/c;->a:Ly8/c;

    const-string v4, "start observe after delay. callbackId: "

    invoke-static {v4, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "SuperChannelManager"

    move-object v11, v3

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz v1, :cond_182

    const/4 v4, 0x1

    move-object/from16 p0, v1

    move-object/from16 p1, v0

    move-object/from16 p2, v10

    move-object/from16 p3, v5

    move/from16 p4, v4

    move-object/from16 p5, v6

    invoke-interface/range {p0 .. p5}, Lcom/oplus/channel/server/ClientProxy;->observe(Ljava/lang/String;[BLkotlin/jvm/functions/Function1;ZLjava/lang/Object;)V

    sget-object v8, Lh4/z;->a:Lh4/z;

    :cond_182
    if-nez v8, :cond_1bb

    invoke-virtual {v2}, Lpantanal/app/bean/SuperChannelInfo;->getCardViewInfo()Lpantanal/app/bean/CardViewInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "super channel clientProxy is null:  callbackId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "    callback:  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xfc

    const/16 v21, 0x0

    const-string v12, "SuperChannelManager"

    move-object v11, v3

    invoke-static/range {v11 .. v21}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_1bb
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method

.method public final unObserveBySuperChannel(Ljava/lang/String;Ljava/lang/String;ILpantanal/app/bean/CardViewInfo;)V
    .registers 16

    const-string p0, "componentName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "observerKey"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cardViewInfo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lpantanal/app/SuperChannelManager;->superChannelObserveMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_58

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "unObserveBySuperChannel:  componentName  "

    const-string v2, "  observerKey  "

    const-string v3, "  entranceType    "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   callback:  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "SuperChannelManager"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object p2, Lpantanal/app/SuperChannelProxyManager;->INSTANCE:Lpantanal/app/SuperChannelProxyManager;

    invoke-virtual {p2, p1, p3}, Lpantanal/app/SuperChannelProxyManager;->getClientProxyName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p3, p4}, Lpantanal/app/SuperChannelProxyManager;->getClientProxy(Ljava/lang/String;ILpantanal/app/bean/CardViewInfo;)Lcom/oplus/channel/server/ClientProxy;

    move-result-object p1

    if-eqz p1, :cond_58

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Lcom/oplus/channel/server/ClientProxy;->unObserve(Lkotlin/jvm/functions/Function1;Z)V

    :cond_58
    return-void
.end method
