.class public Lcom/oplus/zoom/ZoomTrack;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/OplusTrackManager$TrackListener;


# instance fields
.field private mEventGroup:Ljava/lang/String;

.field private mMaps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/ZoomTrack;->mMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public getEventGroup()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomTrack;->mEventGroup:Ljava/lang/String;

    return-object p0
.end method

.method public getEventMaps()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/zoom/ZoomTrack;->mMaps:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getTrackAppId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ZoomTrack;->mTrackAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    iput-object p1, p0, Lcom/oplus/zoom/ZoomTrack;->mTrackAppId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/zoom/ZoomTrack;->mEventGroup:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/zoom/ZoomTrack;->mMaps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
