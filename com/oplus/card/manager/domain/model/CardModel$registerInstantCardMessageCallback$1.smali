.class public final Lcom/oplus/card/manager/domain/model/CardModel$registerInstantCardMessageCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/instant/IInstantCardCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/model/CardModel;->registerInstantCardMessageCallback(Lpantanal/app/Card;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/card/manager/domain/model/CardModel;


# direct methods
.method public constructor <init>(Lcom/oplus/card/manager/domain/model/CardModel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel$registerInstantCardMessageCallback$1;->this$0:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;)V
    .registers 8

    const-class v0, Lcom/google/gson/JsonObject;

    const-string v1, "data"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/card/manager/domain/model/CardModel$registerInstantCardMessageCallback$1;->this$0:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-static {v3}, Lcom/oplus/card/manager/domain/model/CardModel;->access$getUiData$p(Lcom/oplus/card/manager/domain/model/CardModel;)Lpantanal/app/bean/PantanalUIData;

    move-result-object v3

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lpantanal/app/bean/PantanalUIData;->hashCode()I

    move-result v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    const-string v4, "CardModel"

    invoke-static {v2, v3, v4}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel$registerInstantCardMessageCallback$1;->this$0:Lcom/oplus/card/manager/domain/model/CardModel;

    :try_start_26
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/gson/JsonObject;

    const-string v0, "event"

    invoke-virtual {p2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RM_CARD"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMessage, key = RM_CARD, code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->access$getCardView$p(Lcom/oplus/card/manager/domain/model/CardModel;)Lcom/oplus/card/manager/domain/ICardView;

    move-result-object p2

    if-eqz p2, :cond_76

    const/4 v0, 0x0

    const/16 v1, 0xc9

    invoke-interface {p2, v0, v1}, Lcom/oplus/card/manager/domain/ICardView;->handleGetViewCallback(Landroid/view/View;I)Ljava/lang/Boolean;

    :cond_76
    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/model/CardModel;->resetUiData()V

    goto :goto_9a

    :cond_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMessage, it.asString="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", code = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_9c
    .catchall {:try_start_26 .. :try_end_9c} :catchall_9d

    goto :goto_a2

    :catchall_9d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_a2
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_a9

    goto :goto_c5

    :cond_a9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMessage json error. code = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c5
    return-void
.end method
