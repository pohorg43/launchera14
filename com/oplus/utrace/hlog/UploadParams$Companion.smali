.class public final Lcom/oplus/utrace/hlog/UploadParams$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/hlog/UploadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/UploadParams$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Landroid/content/Intent;)Lcom/oplus/utrace/hlog/UploadParams;
    .registers 19

    move-object/from16 v0, p1

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_13

    move-object v4, v2

    goto :goto_14

    :cond_13
    move-object v4, v1

    :goto_14
    const-string v1, "traceId"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v1, "startTime"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v1, "endTime"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v1, "useWifi"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v13, "maxFileSize"

    invoke-virtual {v0, v13, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {}, Lcom/oplus/utrace/sdk/UTraceApp;->getContext$utrace_sdk_fullRelease()Landroid/content/Context;

    move-result-object v5

    if-nez v5, :cond_3d

    const/4 v5, 0x0

    goto :goto_41

    :cond_3d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :goto_41
    move-object/from16 v6, p0

    invoke-virtual {v6, v0, v5}, Lcom/oplus/utrace/hlog/UploadParams$Companion;->getUploadFlag$utrace_sdk_fullRelease(Landroid/content/Intent;Ljava/lang/String;)Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object v15

    const-string v5, "simulate_fd_timeout"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    const-string v3, "sendFrom"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_56

    move-object v0, v2

    :cond_56
    new-instance v2, Lcom/oplus/utrace/hlog/UploadParams;

    move-object v3, v2

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move v11, v1

    move-wide v12, v13

    move-object v14, v15

    move/from16 v15, v16

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/oplus/utrace/hlog/UploadParams;-><init>(Ljava/lang/String;JJJZJLcom/oplus/utrace/hlog/UploadFlag;ZLjava/lang/String;)V

    return-object v2
.end method

.method public final getUploadFlag$utrace_sdk_fullRelease(Landroid/content/Intent;Ljava/lang/String;)Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string p0, "intent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uploadFlag"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/oplus/utrace/hlog/UploadFlag;->Companion:Lcom/oplus/utrace/hlog/UploadFlag$Companion;

    invoke-virtual {p1, p0}, Lcom/oplus/utrace/hlog/UploadFlag$Companion;->from(I)Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object p0

    if-nez p0, :cond_32

    const/4 p0, 0x0

    if-nez p2, :cond_18

    goto :goto_2e

    :cond_18
    sget-object p1, Lcom/oplus/utrace/hlog/HLogUtils;->INSTANCE:Lcom/oplus/utrace/hlog/HLogUtils;

    invoke-virtual {p1}, Lcom/oplus/utrace/hlog/HLogUtils;->getDefaultUploadFlags$utrace_sdk_fullRelease()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/utrace/hlog/UploadFlag;

    if-nez p1, :cond_27

    goto :goto_2e

    :cond_27
    sget-object p0, Lcom/oplus/utrace/hlog/UploadFlag;->CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    if-ne p1, p0, :cond_2c

    goto :goto_2e

    :cond_2c
    sget-object p0, Lcom/oplus/utrace/hlog/UploadFlag;->NO_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    :goto_2e
    if-nez p0, :cond_32

    sget-object p0, Lcom/oplus/utrace/hlog/UploadFlag;->CAN_UPLOAD:Lcom/oplus/utrace/hlog/UploadFlag;

    :cond_32
    return-object p0
.end method
