.class public final synthetic Landroidx/core/location/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/util/concurrent/Executor;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/location/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/g;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/core/location/g;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/location/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/g;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/g;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroidx/core/location/g;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Landroidx/core/location/g;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_14

    :pswitch_6  #0x0
    iget-object v0, p0, Landroidx/core/location/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/g;->c:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/core/location/g;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/core/location/GnssStatusCompat;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->b(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    return-void

    :goto_14
    iget-object v0, p0, Landroidx/core/location/g;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v1, p0, Landroidx/core/location/g;->c:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/core/location/g;->d:Ljava/lang/Object;

    check-cast p0, Landroid/location/GnssStatus;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->b(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
