.class public final Lcom/oplus/smartsdk/ErrorCallback$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/smartsdk/ErrorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\t"
    }
    d2 = {
        "Lcom/oplus/smartsdk/ErrorCallback$Companion;",
        "",
        "",
        "ERROR_CODE_NO",
        "I",
        "ERROR_CODE_URI_SECURITY",
        "ERROR_CODE_FETCH_URI_DATA",
        "<init>",
        "()V",
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
.field public static final synthetic $$INSTANCE:Lcom/oplus/smartsdk/ErrorCallback$Companion;

.field public static final ERROR_CODE_FETCH_URI_DATA:I = 0x2

.field public static final ERROR_CODE_NO:I = 0x0

.field public static final ERROR_CODE_URI_SECURITY:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/smartsdk/ErrorCallback$Companion;

    invoke-direct {v0}, Lcom/oplus/smartsdk/ErrorCallback$Companion;-><init>()V

    sput-object v0, Lcom/oplus/smartsdk/ErrorCallback$Companion;->$$INSTANCE:Lcom/oplus/smartsdk/ErrorCallback$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
