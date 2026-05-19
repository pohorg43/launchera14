.class public final synthetic Lcom/android/quickstep/logging/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

.field public final synthetic b:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/logging/f;->a:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iput-object p2, p0, Lcom/android/quickstep/logging/f;->b:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/quickstep/logging/f;->a:Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;

    iget-object p0, p0, Lcom/android/quickstep/logging/f;->b:Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    invoke-static {v0, p0}, Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;->b(Lcom/android/quickstep/logging/StatsLogCompatManager$StatsCompatLogger;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method
