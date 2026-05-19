.class final Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$cardConfigCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lpantanal/app/bean/CardConfigInfo;",
        ">;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;


# direct methods
.method public constructor <init>(Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$cardConfigCallback$1;->this$0:Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$cardConfigCallback$1;->invoke(Ljava/util/List;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpantanal/app/bean/CardConfigInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager$cardConfigCallback$1;->this$0:Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;

    invoke-static {p0, p1}, Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;->access$onCardConfigChange(Lcom/oplus/card/config/domain/PantanalCardConfigInfoManager;Ljava/util/List;)V

    return-void
.end method
