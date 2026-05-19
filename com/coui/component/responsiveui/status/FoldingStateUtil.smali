.class public final Lcom/coui/component/responsiveui/status/FoldingStateUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/coui/component/responsiveui/status/FoldingStateUtil;

.field public static final a:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/coui/component/responsiveui/status/FoldingStateUtil;

    invoke-direct {v0}, Lcom/coui/component/responsiveui/status/FoldingStateUtil;-><init>()V

    sput-object v0, Lcom/coui/component/responsiveui/status/FoldingStateUtil;->INSTANCE:Lcom/coui/component/responsiveui/status/FoldingStateUtil;

    sget-object v0, Lcom/coui/component/responsiveui/ResponsiveUILog;->INSTANCE:Lcom/coui/component/responsiveui/ResponsiveUILog;

    invoke-virtual {v0}, Lcom/coui/component/responsiveui/ResponsiveUILog;->getLOG_DEBUG()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x3

    const-string v2, "FoldingStateUtil"

    invoke-virtual {v0, v2, v1}, Lcom/coui/component/responsiveui/ResponsiveUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    :goto_1c
    sput-boolean v0, Lcom/coui/component/responsiveui/status/FoldingStateUtil;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFoldingState(Landroid/content/Context;)Lcom/coui/component/responsiveui/status/FoldingState;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oplus_system_folding_mode"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    sget-object p0, Lcom/coui/component/responsiveui/status/FoldingState;->UNKNOWN:Lcom/coui/component/responsiveui/status/FoldingState;

    goto :goto_1d

    :cond_18
    sget-object p0, Lcom/coui/component/responsiveui/status/FoldingState;->UNFOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    goto :goto_1d

    :cond_1b
    sget-object p0, Lcom/coui/component/responsiveui/status/FoldingState;->FOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    :goto_1d
    sget-boolean v0, Lcom/coui/component/responsiveui/status/FoldingStateUtil;->a:Z

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getFoldingState]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FoldingStateUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object p0
.end method

.method public static final registerFoldingStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oplus_system_folding_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static final unregisterFoldingStateObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
