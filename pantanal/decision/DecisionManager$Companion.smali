.class public final Lpantanal/decision/DecisionManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/decision/DecisionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lpantanal/decision/DecisionManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(I)Lpantanal/decision/IServiceDecision;
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string p0, "getInstance, entranceType: "

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "DecisionManager"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    invoke-static {}, Lpantanal/decision/DecisionManager;->access$getMManagerInstances$cp()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpantanal/decision/IServiceDecision;

    if-nez p0, :cond_2f

    new-instance p0, Lpantanal/decision/DecisionManager;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lpantanal/decision/DecisionManager;-><init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Lpantanal/decision/DecisionManager;->access$getMManagerInstances$cp()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2f
    return-object p0
.end method
