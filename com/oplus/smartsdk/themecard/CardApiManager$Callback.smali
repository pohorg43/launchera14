.class public interface abstract Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/smartsdk/themecard/CardApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J \u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH&¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/CardApiManager$Callback;",
        "",
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


# virtual methods
.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onLoad(Lcom/oplus/smartsdk/ISmartViewApi;Landroid/content/Context;Z)V
.end method
