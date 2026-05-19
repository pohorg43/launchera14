.class final Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/smartsdk/themecard/ViewApiDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BindInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\fR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006¨\u0006\r"
    }
    d2 = {
        "Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;",
        "",
        "",
        "cardIdentify",
        "Ljava/lang/String;",
        "getCardIdentify",
        "()Ljava/lang/String;",
        "packageName",
        "getPackageName",
        "className",
        "getClassName",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
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
.field private final cardIdentify:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-string v1, "cardIdentify"

    const-string v3, "packageName"

    const-string v5, "className"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->cardIdentify:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCardIdentify()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->cardIdentify:Ljava/lang/String;

    return-object p0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->className:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/smartsdk/themecard/ViewApiDelegate$BindInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method
