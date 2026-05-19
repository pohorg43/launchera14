.class public final Lcom/oplus/card/manager/domain/model/CardModel$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/UIDataInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/model/CardModel;-><init>(IIILcom/oplus/card/config/domain/model/CardConfigInfo;Lcom/android/launcher3/card/seed/SeedParams;Lpantanal/app/Card;)V
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

    iput-object p1, p0, Lcom/oplus/card/manager/domain/model/CardModel$1;->this$0:Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveUIData(Lpantanal/app/bean/PantanalUIData;)Z
    .registers 3

    const-string v0, "uiData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/manager/domain/model/CardModel$1;->this$0:Lcom/oplus/card/manager/domain/model/CardModel;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/card/manager/domain/model/CardModel;->updateUIData(Lpantanal/app/bean/PantanalUIData;Z)Z

    move-result p0

    return p0
.end method
