.class public final synthetic Lcom/android/quickstep/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/OverviewCommandHelper;

.field public final synthetic c:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;I)V
    .registers 4

    iput p3, p0, Lcom/android/quickstep/a1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/a1;->b:Lcom/android/quickstep/OverviewCommandHelper;

    iput-object p2, p0, Lcom/android/quickstep/a1;->c:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/a1;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/quickstep/a1;->b:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object p0, p0, Lcom/android/quickstep/a1;->c:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-static {v0, p0}, Lcom/android/quickstep/OverviewCommandHelper;->d(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/quickstep/a1;->b:Lcom/android/quickstep/OverviewCommandHelper;

    iget-object p0, p0, Lcom/android/quickstep/a1;->c:Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;

    invoke-static {v0, p0}, Lcom/android/quickstep/OverviewCommandHelper;->c(Lcom/android/quickstep/OverviewCommandHelper;Lcom/android/quickstep/OverviewCommandHelper$CommandInfo;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
