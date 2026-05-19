.class public final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,222:1\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2"
    f = "WindowFeatureUtil.kt"
    l = {
        0xdf
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;


# direct methods
.method public constructor <init>(Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->c:Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->a:Ljava/lang/Object;

    iget p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->b:I

    iget-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->c:Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
