.class final Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/applock/OplusLockManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;

    invoke-direct {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;->INSTANCE:Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    const-string v1, "Configuration"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
