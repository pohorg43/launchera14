.class public abstract Lcom/oplus/channel/server/provider/ChannelServerProvider;
.super Landroid/content/ContentProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/provider/ChannelServerProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000  2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0005\u001a\u00020\u0004H\u0016JQ\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0007\u001a\u00020\u00062\u0010\u0010\t\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\b2\b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0010\u0010\u000b\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\b2\b\u0010\f\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J3\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0010\u0010\u000b\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0015\u0010\u0016J=\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\n\u001a\u0004\u0018\u00010\u00022\u0010\u0010\u000b\u001a\f\u0012\u0006\b\u0001\u0012\u00020\u0002\u0018\u00010\bH\u0016¢\u0006\u0004\b\u0017\u0010\u0018J&\u0010\u001d\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0019\u001a\u00020\u00022\b\u0010\u001a\u001a\u0004\u0018\u00010\u00022\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¨\u0006!"
    }
    d2 = {
        "Lcom/oplus/channel/server/provider/ChannelServerProvider;",
        "Landroid/content/ContentProvider;",
        "",
        "getAuthority",
        "",
        "onCreate",
        "Landroid/net/Uri;",
        "uri",
        "",
        "projection",
        "selection",
        "selectionArgs",
        "sortOrder",
        "Landroid/database/Cursor;",
        "query",
        "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "getType",
        "Landroid/content/ContentValues;",
        "values",
        "insert",
        "",
        "delete",
        "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I",
        "update",
        "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I",
        "method",
        "arg",
        "Landroid/os/Bundle;",
        "extras",
        "call",
        "<init>",
        "()V",
        "Companion",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field private static final BATCH_CLIENT_SPLIT:C = '#'

.field public static final Companion:Lcom/oplus/channel/server/provider/ChannelServerProvider$Companion;

.field public static final TAG:Ljava/lang/String; = "ChannelServerProvider"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/provider/ChannelServerProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/provider/ChannelServerProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/provider/ChannelServerProvider;->Companion:Lcom/oplus/channel/server/provider/ChannelServerProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/provider/IServerProvider;[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/channel/server/provider/ChannelServerProvider;->call$lambda-7$lambda-6$lambda-5(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/provider/IServerProvider;[B)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/channel/server/provider/IServerProvider;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;[B)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/channel/server/provider/ChannelServerProvider;->call$lambda-3$lambda-2(Lcom/oplus/channel/server/provider/IServerProvider;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;[B)V

    return-void
.end method

.method private static final call$lambda-3$lambda-2(Lcom/oplus/channel/server/provider/IServerProvider;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;[B)V
    .registers 5

    const-string v0, "$callbackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/channel/server/provider/IServerProvider;->runCallback(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method private static final call$lambda-7$lambda-6$lambda-5(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/provider/IServerProvider;[B)V
    .registers 8

    const-string v0, "callbackId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x23

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2}, Lk7/q;->u(Ljava/lang/CharSequence;CZI)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x1

    new-array v3, v2, [C

    aput-char v0, v3, v1

    const/4 v0, 0x6

    invoke-static {p0, v3, v1, v1, v0}, Lk7/q;->N(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v1}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_23

    const-string v0, ""

    :cond_23
    invoke-static {p0, v2}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2c

    goto :goto_39

    :cond_2c
    invoke-static {p0}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    const/4 p0, 0x0

    :goto_35
    if-nez p0, :cond_38

    goto :goto_39

    :cond_38
    move-object p1, p0

    :goto_39
    invoke-interface {p2, p1, v0, p3}, Lcom/oplus/channel/server/provider/IServerProvider;->runCallback(Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_40

    :cond_3d
    invoke-interface {p2, p1, p0, p3}, Lcom/oplus/channel/server/provider/IServerProvider;->runCallback(Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_40
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "method"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "pullCommand"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "batch_callback"

    const-string v7, "callback"

    const-string v8, "batch_call_result"

    const-string v9, "call_result"

    const/4 v10, 0x1

    if-nez v5, :cond_34

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_34
    const-string v5, "], arg=["

    const/16 v11, 0x5d

    const-string v12, "ChannelServerProvider"

    if-nez v1, :cond_60

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call, failed with method=["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_60
    sget-object v13, Lcom/oplus/channel/server/ServerChannel;->INSTANCE:Lcom/oplus/channel/server/ServerChannel;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/channel/server/provider/ChannelServerProvider;->getAuthority()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/oplus/channel/server/ServerChannel;->getServerProviderByAuthority(Ljava/lang/String;)Lcom/oplus/channel/server/provider/IServerProvider;

    move-result-object v13

    if-nez v13, :cond_99

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call, failed with server=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], authority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/channel/server/provider/ChannelServerProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_99
    invoke-interface {v13}, Lcom/oplus/channel/server/provider/IServerProvider;->getIdleState()I

    move-result v5

    const/4 v14, -0x1

    if-ne v5, v14, :cond_b0

    const-string v0, "call, failed with idle state, return"

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESULT_IDLE_STATE"

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :cond_b0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v14, -0x3aa4deba

    const-string v15, "call, method=["

    const-string v11, "], extras=["

    const-string v10, "], clientName=["

    if-eq v5, v14, :cond_1ee

    const v4, -0xa43dfbb

    const-string v14, "call, failed with data = null method=["

    move-object/from16 v16, v9

    const-string v9, "RESULT_CALLBACK_DATA"

    if-eq v5, v4, :cond_163

    const v4, 0x2073fbaa

    if-eq v5, v4, :cond_d4

    :goto_cf
    move-object/from16 v6, v16

    :goto_d1
    const/4 v0, 0x1

    goto/16 :goto_1f7

    :cond_d4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_db

    goto :goto_cf

    :cond_db
    if-nez v2, :cond_e0

    :cond_dd
    const/4 v0, 0x0

    goto/16 :goto_15f

    :cond_e0
    const-string v4, "RESULT_CALLBACK_ID_LIST"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_eb

    const/4 v5, 0x0

    new-array v4, v5, [Ljava/lang/String;

    :cond_eb
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_119

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "], callbackIds=["

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, v4

    const/4 v2, 0x0

    :goto_14a
    if-ge v2, v0, :cond_dd

    aget-object v6, v4, v2

    sget-object v7, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {v7}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v7

    new-instance v9, Lcom/android/common/debug/c;

    invoke-direct {v9, v6, v1, v13, v5}, Lcom/android/common/debug/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/provider/IServerProvider;[B)V

    invoke-virtual {v7, v9}, Lcom/oplus/channel/server/utils/WorkHandler;->post(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14a

    :goto_15f
    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_163
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16b

    goto/16 :goto_cf

    :cond_16b
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v5, ""

    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v2, :cond_17a

    move-object/from16 v6, v16

    :goto_178
    const/4 v0, 0x0

    goto :goto_1ea

    :cond_17a
    const-string v6, "RESULT_CALLBACK_ID"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_183

    goto :goto_184

    :cond_183
    move-object v5, v6

    :goto_184
    iput-object v5, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1b6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v16

    const/4 v0, 0x1

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_1b6
    move-object/from16 v6, v16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/utils/WorkHandler;->Companion:Lcom/oplus/channel/server/utils/WorkHandler$Companion;

    invoke-virtual {v0}, Lcom/oplus/channel/server/utils/WorkHandler$Companion;->getInstance()Lcom/oplus/channel/server/utils/WorkHandler;

    move-result-object v0

    new-instance v2, Lcom/android/common/debug/c;

    invoke-direct {v2, v13, v1, v4, v5}, Lcom/android/common/debug/c;-><init>(Lcom/oplus/channel/server/provider/IServerProvider;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;[B)V

    invoke-virtual {v0, v2}, Lcom/oplus/channel/server/utils/WorkHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_178

    :goto_1ea
    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_1ee
    move-object v6, v9

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1fe

    goto/16 :goto_d1

    :goto_1f7
    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v3

    :cond_1fe
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/channel/server/data/CommandDataManager;->INSTANCE:Lcom/oplus/channel/server/data/CommandDataManager;

    invoke-virtual {v0, v1}, Lcom/oplus/channel/server/data/CommandDataManager;->removeCachedCommandData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_231

    invoke-interface {v13, v1}, Lcom/oplus/channel/server/provider/IServerProvider;->pullCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/channel/server/data/CommandDataManager;->encodeCommandData(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v2

    :cond_231
    const/4 v0, 0x0

    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "RESULT_BATCH_CALLBACK_SUPPORT"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    const-string p0, "uri"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
