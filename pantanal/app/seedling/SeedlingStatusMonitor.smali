.class public final Lpantanal/app/seedling/SeedlingStatusMonitor;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private volatile hasInit:Z

.field private volatile hasRegisterListener:Z

.field private volatile hasUsOrContainerCard:Z

.field private volatile setup:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHasInit()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->hasInit:Z

    return p0
.end method

.method public final getHasRegisterListener()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->hasRegisterListener:Z

    return p0
.end method

.method public final getHasUsOrContainerCard()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->hasUsOrContainerCard:Z

    return p0
.end method

.method public final getSetup()Z
    .registers 1

    iget-boolean p0, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->setup:Z

    return p0
.end method

.method public final setHasInit(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->hasInit:Z

    return-void
.end method

.method public final setHasRegisterListener(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->hasRegisterListener:Z

    return-void
.end method

.method public final setHasUsOrContainerCard(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->hasUsOrContainerCard:Z

    return-void
.end method

.method public final setSetup(Z)V
    .registers 2

    iput-boolean p1, p0, Lpantanal/app/seedling/SeedlingStatusMonitor;->setup:Z

    return-void
.end method
