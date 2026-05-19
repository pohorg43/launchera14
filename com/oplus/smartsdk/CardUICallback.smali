.class public interface abstract Lcom/oplus/smartsdk/CardUICallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/smartsdk/CardUICallback$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\"\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\'¨\u0006\u000b"
    }
    d2 = {
        "Lcom/oplus/smartsdk/CardUICallback;",
        "",
        "Landroid/view/View;",
        "view",
        "",
        "code",
        "",
        "cardName",
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
.field public static final CODE_PARSE_ERROR:I = 0x1

.field public static final CODE_REFRESH_ERROR:I = 0x2

.field public static final CODE_SUCCESS:I

.field public static final Companion:Lcom/oplus/smartsdk/CardUICallback$Companion;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/smartsdk/CardUICallback$Companion;->$$INSTANCE:Lcom/oplus/smartsdk/CardUICallback$Companion;

    sput-object v0, Lcom/oplus/smartsdk/CardUICallback;->Companion:Lcom/oplus/smartsdk/CardUICallback$Companion;

    return-void
.end method


# virtual methods
.method public abstract onCall(Landroid/view/View;ILjava/lang/String;)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method
