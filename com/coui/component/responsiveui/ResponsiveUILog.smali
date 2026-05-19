.class public final Lcom/coui/component/responsiveui/ResponsiveUILog;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-direct {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;-><init>()V

    sput-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    const-string v0, "COUI"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/coui/component/responsiveui/ResponsiveUILog;->a:Z

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    sput-boolean v2, Lcom/coui/component/responsiveui/ResponsiveUILog;->b:Z

    const/4 v3, 0x4

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    sput-boolean v3, Lcom/coui/component/responsiveui/ResponsiveUILog;->c:Z

    const/4 v4, 0x5

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    sput-boolean v4, Lcom/coui/component/responsiveui/ResponsiveUILog;->d:Z

    const/4 v5, 0x6

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    sput-boolean v5, Lcom/coui/component/responsiveui/ResponsiveUILog;->e:Z

    const/4 v6, 0x7

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->f:Z

    if-nez v1, :cond_41

    if-nez v2, :cond_41

    if-nez v3, :cond_41

    if-nez v4, :cond_41

    if-nez v5, :cond_41

    if-nez v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    sput-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLOG_ASSERT()Z
    .registers 1

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->f:Z

    return p0
.end method

.method public final getLOG_DEBUG()Z
    .registers 1

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->b:Z

    return p0
.end method

.method public final getLOG_ERROR()Z
    .registers 1

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->e:Z

    return p0
.end method

.method public final getLOG_INFO()Z
    .registers 1

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->c:Z

    return p0
.end method

.method public final getLOG_SILENT()Z
    .registers 1

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->g:Z

    return p0
.end method

.method public final getLOG_VERBOSE()Z
    .registers 1

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->a:Z

    return p0
.end method

.method public final getLOG_WARN()Z
    .registers 1

    sget-boolean p0, Lcom/coui/component/responsiveui/ResponsiveUILog;->d:Z

    return p0
.end method

.method public final isLoggable(Ljava/lang/String;I)Z
    .registers 3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final logStatus()V
    .registers 2

    const-string v0, "COUI"

    invoke-virtual {p0, v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->logStatus(Ljava/lang/String;)V

    return-void
.end method

.method public final logStatus(Ljava/lang/String;)V
    .registers 12

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "COUI"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->a:Z

    goto :goto_15

    :cond_11
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_15
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    sget-boolean v2, Lcom/coui/component/responsiveui/ResponsiveUILog;->b:Z

    goto :goto_23

    :cond_1e
    const/4 v2, 0x3

    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    :goto_23
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    sget-boolean v3, Lcom/coui/component/responsiveui/ResponsiveUILog;->c:Z

    goto :goto_30

    :cond_2c
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    :goto_30
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    sget-boolean v4, Lcom/coui/component/responsiveui/ResponsiveUILog;->d:Z

    goto :goto_3d

    :cond_39
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    :goto_3d
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    sget-boolean v5, Lcom/coui/component/responsiveui/ResponsiveUILog;->e:Z

    goto :goto_4a

    :cond_46
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    :goto_4a
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    sget-boolean v1, Lcom/coui/component/responsiveui/ResponsiveUILog;->f:Z

    goto :goto_57

    :cond_53
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    :goto_57
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_60

    sget-boolean v6, Lcom/coui/component/responsiveui/ResponsiveUILog;->g:Z

    goto :goto_6f

    :cond_60
    if-nez v0, :cond_6e

    if-nez v2, :cond_6e

    if-nez v3, :cond_6e

    if-nez v4, :cond_6e

    if-nez v5, :cond_6e

    if-nez v1, :cond_6e

    const/4 v6, 0x1

    goto :goto_6f

    :cond_6e
    const/4 v6, 0x0

    :goto_6f
    const/4 v7, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n            Log status for tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n            VERBOSE: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n            DEBUG: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n            INFO: "

    const-string v0, "\n            WARN: "

    invoke-static {v8, v2, p1, v3, v0}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string p1, "\n            ERROR: "

    const-string v0, "\n            ASSERT: "

    invoke-static {v8, v4, p1, v5, v0}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n            SILENT: "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "\n            "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk7/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
