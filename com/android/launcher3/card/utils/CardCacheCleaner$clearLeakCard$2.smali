.class final Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/utils/CardCacheCleaner;->clearLeakCard(Lpantanal/app/Card;ILl4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.utils.CardCacheCleaner$clearLeakCard$2"
    f = "CardCacheCleaner.kt"
    l = {
        0x8c,
        0x8f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $card:Lpantanal/app/Card;

.field public final synthetic $maxRetry:I

.field public I$0:I

.field public J$0:J

.field public label:I


# direct methods
.method public constructor <init>(ILpantanal/app/Card;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lpantanal/app/Card;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$maxRetry:I

    iput-object p2, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$card:Lpantanal/app/Card;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;

    iget v0, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$maxRetry:I

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$card:Lpantanal/app/Card;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;-><init>(ILpantanal/app/Card;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_22

    if-eq v1, v3, :cond_19

    if-ne v1, v2, :cond_11

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_94

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    iget v1, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->I$0:I

    iget-wide v4, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->J$0:J

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    :cond_20
    move p1, v1

    goto :goto_48

    :cond_22
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    const/4 p1, 0x0

    :goto_28
    invoke-static {}, Lcom/android/launcher3/card/utils/CardCacheCleaner;->access$getAVOID_ANIM_TYPES$p()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/card/LauncherCardUtil;->checkDuringAnimation(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7f

    iget v1, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$maxRetry:I

    if-ge p1, v1, :cond_7f

    add-int/lit8 v1, p1, 0x1

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->J$0:J

    iput v1, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->I$0:I

    iput v3, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->label:I

    invoke-static {v6, v7, p0}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_20

    return-object v0

    :goto_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearLeakCard timeCost: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " retryTime:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$card:Lpantanal/app/Card;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", card.getView: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$card:Lpantanal/app/Card;

    invoke-interface {v6}, Lpantanal/app/IPantanalService;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "CardCacheCleaner"

    invoke-static {v6, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_7f
    sget-object p1, Lm7/y0;->a:Lm7/y0;

    sget-object p1, Lr7/v;->a:Lm7/b2;

    new-instance v1, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2$1;

    iget-object v3, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->$card:Lpantanal/app/Card;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2$1;-><init>(Lpantanal/app/Card;Ll4/d;)V

    iput v2, p0, Lcom/android/launcher3/card/utils/CardCacheCleaner$clearLeakCard$2;->label:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_94

    return-object v0

    :cond_94
    :goto_94
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
