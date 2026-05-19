.class public final synthetic Landroidx/core/location/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/h;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iput p2, p0, Landroidx/core/location/h;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/core/location/h;->a:Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget p0, p0, Landroidx/core/location/h;->b:I

    invoke-static {v0, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->d(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;I)V

    return-void
.end method
