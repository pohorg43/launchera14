.class public final Lcom/oplus/quickstep/utils/AnimationFeatureHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/utils/AnimationFeatureHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/utils/AnimationFeatureHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/utils/AnimationFeatureHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$1;->this$0:Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRusConfigChanged()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$1;->this$0:Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->access$updateRusConfig(Lcom/oplus/quickstep/utils/AnimationFeatureHelper;)V

    return-void
.end method
