.class public final synthetic Landroidx/core/location/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/location/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/f;->c:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/f;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/location/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/f;->c:Ljava/util/concurrent/Executor;

    iput p3, p0, Landroidx/core/location/f;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Landroidx/core/location/f;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/core/location/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/f;->c:Ljava/util/concurrent/Executor;

    iget p0, p0, Landroidx/core/location/f;->d:I

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->a(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :goto_12
    iget-object v0, p0, Landroidx/core/location/f;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v1, p0, Landroidx/core/location/f;->c:Ljava/util/concurrent/Executor;

    iget p0, p0, Landroidx/core/location/f;->d:I

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->c(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
