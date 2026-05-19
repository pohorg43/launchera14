.class final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;->a:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/coui/component/responsiveui/status/WindowFeature;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;->a:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->access$getDEBUG$p()Z

    move-result p0

    if-eqz p0, :cond_21

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[trackWindowFeature] windowFeature = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowFeatureUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/coui/component/responsiveui/status/WindowFeature;

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$2;->emit(Lcom/coui/component/responsiveui/status/WindowFeature;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
