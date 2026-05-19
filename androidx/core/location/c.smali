.class public final synthetic Landroidx/core/location/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/c;->a:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Landroidx/core/location/c;->a:Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;

    invoke-static {p0}, Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;->b(Landroidx/core/location/LocationManagerCompat$CancellableLocationListener;)V

    return-void
.end method
