.class public final Lcom/android/launcher3/card/seed/SeedStatusMonitor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private hasInit:Z

.field private hasSeedOrGroupCard:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasInit()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasInit:Z

    return p0
.end method

.method public final getHasSeedOrGroupCard()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasSeedOrGroupCard:Z

    return p0
.end method

.method public final setHasInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasInit:Z

    return-void
.end method

.method public final setHasSeedOrGroupCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/card/seed/SeedStatusMonitor;->hasSeedOrGroupCard:Z

    return-void
.end method
