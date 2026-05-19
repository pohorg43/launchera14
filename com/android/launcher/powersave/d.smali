.class public final synthetic Lcom/android/launcher/powersave/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/powersave/SuperPowerModeManager$2;

.field public final synthetic b:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager$2;Landroid/view/WindowManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/d;->a:Lcom/android/launcher/powersave/SuperPowerModeManager$2;

    iput-object p2, p0, Lcom/android/launcher/powersave/d;->b:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/d;->a:Lcom/android/launcher/powersave/SuperPowerModeManager$2;

    iget-object p0, p0, Lcom/android/launcher/powersave/d;->b:Landroid/view/WindowManager;

    invoke-static {v0, p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$2;->a(Lcom/android/launcher/powersave/SuperPowerModeManager$2;Landroid/view/WindowManager;)V

    return-void
.end method
