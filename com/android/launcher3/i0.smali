.class public final synthetic Lcom/android/launcher3/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher3/i0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/i0;->b:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/i0;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/i0;->b:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    check-cast p1, Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    :goto_a
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher3/i0;->b:Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    check-cast p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_a

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
