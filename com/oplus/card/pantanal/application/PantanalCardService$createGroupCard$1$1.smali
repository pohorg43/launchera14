.class final Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/pantanal/application/PantanalCardService;->createGroupCard(Lcom/android/launcher3/card/LauncherCardInfo;Landroid/content/Context;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
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
    c = "com.oplus.card.pantanal.application.PantanalCardService$createGroupCard$1$1"
    f = "PantanalCardService.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $bundle:Landroid/os/Bundle;

.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

.field public J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lcom/oplus/card/pantanal/application/PantanalCardService;


# direct methods
.method public constructor <init>(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/card/pantanal/application/PantanalCardService;",
            "Landroid/content/Context;",
            "Lpantanal/app/groupcard/GroupCardInfo;",
            "Landroid/os/Bundle;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->this$0:Lcom/oplus/card/pantanal/application/PantanalCardService;

    iput-object p2, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

    iput-object p4, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$bundle:Landroid/os/Bundle;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 10
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

    new-instance v6, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;

    iget-object v1, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->this$0:Lcom/oplus/card/pantanal/application/PantanalCardService;

    iget-object v2, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

    iget-object v4, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$bundle:Landroid/os/Bundle;

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;-><init>(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;Ll4/d;)V

    iput-object p1, v6, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->L$0:Ljava/lang/Object;

    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->label:I

    const/4 v2, 0x1

    const-string v3, "PantanalCardService"

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-wide v0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->J$0:J

    :try_start_d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_75

    goto :goto_60

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lm7/j0;

    const-string v1, "createGroupCard delayJob:isActive:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lm7/k0;->e(Lm7/j0;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lm7/k0;->e(Lm7/j0;)Z

    move-result p1

    if-eqz p1, :cond_ac

    const-string p1, "createGroupCard delayJob doing status:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v1, Lcom/oplus/card/pantanal/application/PantanalCardService;->sGroupCardPluginStatus:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_4c
    sget p1, Lcom/oplus/card/pantanal/application/PantanalCardService;->sGroupCardPluginStatus:I

    sget v1, Lcom/oplus/card/pantanal/application/PantanalCardService;->GROUPCARD_PLUGIN_DEFAULT:I

    if-ne p1, v1, :cond_7a

    const-wide/16 v4, 0x7d0

    iput-wide v4, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->J$0:J

    iput v2, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->label:I

    invoke-static {v4, v5, p0}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5f

    return-object v0

    :cond_5f
    move-wide v0, v4

    :goto_60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createGroupCard delayJob doing end "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_74} :catch_75

    goto :goto_7a

    :catch_75
    const-string p1, "createGroupCard delayJob doing end"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    :goto_7a
    const-string p1, "createGroupCard delayJob doing set card"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/card/groupcard/GroupCardView;->Companion:Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_93

    invoke-interface {p1}, Lcom/oplus/card/manager/domain/ICardView;->getCardModel()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p1

    if-eqz p1, :cond_93

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->getCardModel()Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p1

    goto :goto_94

    :cond_93
    move-object p1, v0

    :goto_94
    if-nez p1, :cond_97

    goto :goto_ac

    :cond_97
    iget-object v1, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->this$0:Lcom/oplus/card/pantanal/application/PantanalCardService;

    invoke-static {v1}, Lcom/oplus/card/pantanal/application/PantanalCardService;->access$getPantanalClient$p(Lcom/oplus/card/pantanal/application/PantanalCardService;)Lu8/b;

    move-result-object v1

    if-eqz v1, :cond_a9

    iget-object v0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$groupCardInfo:Lpantanal/app/groupcard/GroupCardInfo;

    iget-object p0, p0, Lcom/oplus/card/pantanal/application/PantanalCardService$createGroupCard$1$1;->$bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, p0}, Lu8/b;->b(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object v0

    :cond_a9
    invoke-virtual {p1, v0}, Lcom/oplus/card/manager/domain/model/CardModel;->setCard(Lpantanal/app/Card;)V

    :cond_ac
    :goto_ac
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
