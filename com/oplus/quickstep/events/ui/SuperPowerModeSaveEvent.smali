.class public Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# instance fields
.field private mDefaultHome:Landroid/content/ComponentName;

.field private final mInSuperPowerSaveMode:Z

.field private final mType:I


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput-boolean p1, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mInSuperPowerSaveMode:Z

    iput p2, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mType:I

    return-void
.end method


# virtual methods
.method public getDefaultHome()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mDefaultHome:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getType()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mType:I

    return p0
.end method

.method public isInSuperPowerSaveMode()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mInSuperPowerSaveMode:Z

    return p0
.end method

.method public setDefaultHome(Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/events/ui/SuperPowerModeSaveEvent;->mDefaultHome:Landroid/content/ComponentName;

    return-void
.end method
