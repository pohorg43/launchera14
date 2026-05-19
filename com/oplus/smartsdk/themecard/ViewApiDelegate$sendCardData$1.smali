.class public final Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016¨\u0006\r"
    }
    d2 = {
        "com/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1",
        "Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;",
        "Lcom/oplus/smartsdk/ISmartViewApi;",
        "api",
        "Landroid/content/Context;",
        "cardContext",
        "",
        "isThemeCard",
        "Lh4/z;",
        "onLoad",
        "",
        "e",
        "onError",
        "com.oplus.smartsdk.smartenginesdk"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic $cardName:Ljava/lang/String;

.field public final synthetic $smartApiInfo:Lcom/oplus/smartsdk/SmartApiInfo;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;


# direct methods
.method public constructor <init>(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    iput-object p2, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$cardName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$view:Landroid/view/View;

    iput-object p4, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$smartApiInfo:Lcom/oplus/smartsdk/SmartApiInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->onError$lambda-0(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/lang/String;)V

    return-void
.end method

.method private static final onError$lambda-0(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/lang/String;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$cardName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$getErrorCallback$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Lcom/oplus/smartsdk/ErrorCallback;

    move-result-object p0

    if-nez p0, :cond_11

    goto :goto_15

    :cond_11
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/oplus/smartsdk/ErrorCallback;->onCall(Ljava/lang/String;I)V

    :goto_15
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadCardApi onError cardName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$cardName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ViewApiDelegate"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/oplus/smartsdk/SmartEngineManager;->MAIN_HANDLER:Landroid/os/Handler;

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$cardName:Ljava/lang/String;

    new-instance v1, Lcom/android/wm/shell/animation/c;

    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoad(Lcom/oplus/smartsdk/ISmartViewApi;Landroid/content/Context;Z)V
    .registers 8

    const-string v0, "api"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_1b

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-static {v1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$getThemeCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Lcom/oplus/smartsdk/ISmartViewApi;

    move-result-object v1

    if-eq v1, p1, :cond_29

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-static {v1, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$setThemeCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Lcom/oplus/smartsdk/ISmartViewApi;)V

    goto :goto_2a

    :cond_1b
    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-static {v1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$getSmartCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Lcom/oplus/smartsdk/ISmartViewApi;

    move-result-object v1

    if-eq v1, p1, :cond_29

    iget-object v1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-static {v1, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$setSmartCardApi$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Lcom/oplus/smartsdk/ISmartViewApi;)V

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    const-string v1, "loadCardApi onLoad cardName="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$cardName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isThemeCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " shouldInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ViewApiDelegate"

    invoke-static {v1, v0, v2}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_8a

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-static {v0, p1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$initApiCommon(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Lcom/oplus/smartsdk/ISmartViewApi;)V

    if-nez p3, :cond_8a

    iget-object p3, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-static {p3}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$getEnableImageThread$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Z

    move-result p3

    invoke-interface {p1, p3}, Lcom/oplus/smartsdk/ISmartViewApi;->setUseImageThread(Z)V

    iget-object p3, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    invoke-static {p3}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$getBindInfoList$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;)Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->this$0:Lcom/oplus/smartsdk/themecard/ViewApiDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate;->access$setBindInfoList$p(Lcom/oplus/smartsdk/themecard/ViewApiDelegate;Ljava/util/List;)V

    if-eqz p3, :cond_8a

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;

    invoke-virtual {v1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->getCardIdentify()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v3, v1}, Lcom/oplus/smartsdk/ISmartViewApi;->setBindServiceToCPData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    :cond_87
    invoke-interface {p3}, Ljava/util/List;->clear()V

    :cond_8a
    iget-object p3, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$cardName:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$view:Landroid/view/View;

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$sendCardData$1;->$smartApiInfo:Lcom/oplus/smartsdk/SmartApiInfo;

    invoke-interface {p1, p2, p3, v0, p0}, Lcom/oplus/smartsdk/ISmartViewApi;->sendCardData(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/oplus/smartsdk/SmartApiInfo;)V

    return-void
.end method
