.class public final synthetic Lcom/android/launcher/powersave/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/powersave/SuperPowerModeManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/c;->a:Lcom/android/launcher/powersave/SuperPowerModeManager$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/powersave/c;->a:Lcom/android/launcher/powersave/SuperPowerModeManager$1;

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager$1;->c(Lcom/android/launcher/powersave/SuperPowerModeManager$1;)V

    return-void
.end method
