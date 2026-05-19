.class public interface abstract Lcom/oplus/smartsdk/ErrorCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/ErrorCallback$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \b2\u00020\u0001:\u0001\bJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¨\u0006\t"
    }
    d2 = {
        "Lcom/oplus/smartsdk/ErrorCallback;",
        "",
        "",
        "cardName",
        "",
        "code",
        "Lh4/z;",
        "onCall",
        "Companion",
        "com.oplus.smartsdk.smartenginesdk"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/smartsdk/ErrorCallback$Companion;

.field public static final ERROR_CODE_FETCH_URI_DATA:I = 0x2

.field public static final ERROR_CODE_NO:I = 0x0

.field public static final ERROR_CODE_URI_SECURITY:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/smartsdk/ErrorCallback$Companion;->$$INSTANCE:Lcom/oplus/smartsdk/ErrorCallback$Companion;

    sput-object v0, Lcom/oplus/smartsdk/ErrorCallback;->Companion:Lcom/oplus/smartsdk/ErrorCallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onCall(Ljava/lang/String;I)V
.end method
