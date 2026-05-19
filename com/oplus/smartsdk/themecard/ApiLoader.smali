.class public interface abstract Lcom/oplus/smartsdk/themecard/ApiLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u001c\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0002H&¨\u0006\n"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/ApiLoader;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "isForceLoad",
        "hostContext",
        "Lh4/j;",
        "Lcom/oplus/smartsdk/ISmartViewApi;",
        "loadApi",
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
.method public abstract isForceLoad(Landroid/content/Context;)Z
.end method

.method public abstract loadApi(Landroid/content/Context;)Lh4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lh4/j<",
            "Lcom/oplus/smartsdk/ISmartViewApi;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
