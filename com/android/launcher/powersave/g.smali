.class public final synthetic Lcom/android/launcher/powersave/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lcom/android/launcher/powersave/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/powersave/g;

    invoke-direct {v0}, Lcom/android/launcher/powersave/g;-><init>()V

    sput-object v0, Lcom/android/launcher/powersave/g;->a:Lcom/android/launcher/powersave/g;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;

    invoke-interface {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager$OnModelStateUpdate;->onAllAppsLoaded()V

    return-void
.end method
