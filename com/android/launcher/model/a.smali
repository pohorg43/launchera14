.class public final synthetic Lcom/android/launcher/model/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/evolution/EvolutionConnector$ISatelliteConnectCallback;


# instance fields
.field public final synthetic a:Lcom/android/launcher/model/SatelliteStateManage;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/model/SatelliteStateManage;Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/model/a;->a:Lcom/android/launcher/model/SatelliteStateManage;

    iput-object p2, p0, Lcom/android/launcher/model/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onSatelliteConnected(Lcom/oplus/evolution/SatelliteProxy;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/model/a;->a:Lcom/android/launcher/model/SatelliteStateManage;

    iget-object p0, p0, Lcom/android/launcher/model/a;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/android/launcher/model/SatelliteStateManage;->a(Lcom/android/launcher/model/SatelliteStateManage;Landroid/content/Context;Lcom/oplus/evolution/SatelliteProxy;)V

    return-void
.end method
