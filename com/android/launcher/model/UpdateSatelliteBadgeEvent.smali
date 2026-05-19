.class public final Lcom/android/launcher/model/UpdateSatelliteBadgeEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# instance fields
.field private mUpdateEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeEvent;->mUpdateEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getUpdateEvent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeEvent;->mUpdateEvent:Ljava/lang/String;

    return-object p0
.end method

.method public final setUpdateEvent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/model/UpdateSatelliteBadgeEvent;->mUpdateEvent:Ljava/lang/String;

    return-void
.end method
