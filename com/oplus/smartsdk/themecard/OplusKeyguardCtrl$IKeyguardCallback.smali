.class public interface abstract Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IKeyguardCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\'J\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\tH\'¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/OplusKeyguardCtrl$IKeyguardCallback;",
        "",
        "Landroid/view/View;",
        "view",
        "Lh4/z;",
        "onLoadView",
        "",
        "errorMsg",
        "onLoadFailed",
        "Landroid/content/Intent;",
        "intent",
        "",
        "startActivity",
        "com.oplus.smartsdk.smartenginesdk"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# virtual methods
.method public abstract onLoadFailed(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract onLoadView(Landroid/view/View;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public abstract startActivity(Landroid/view/View;Landroid/content/Intent;)Z
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
