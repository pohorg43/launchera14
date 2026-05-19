.class final Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/media/AudioManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;

    invoke-direct {v0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;->INSTANCE:Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/media/AudioManager;
    .registers 2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/media/AudioManager;

    if-eqz v0, :cond_11

    check-cast p0, Landroid/media/AudioManager;

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$audioManager$2;->invoke()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method
