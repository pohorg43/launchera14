.class final synthetic Lpantanal/app/seedling/SeedlingCardImpl$onDragEnd$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/seedling/SeedlingCardImpl;->onDragEnd(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lpantanal/app/bean/PantanalUIData;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 9

    const-class v3, Lpantanal/app/seedling/SeedlingCardImpl;

    const/4 v1, 0x1

    const-string v4, "receiveUIData"

    const-string v5, "receiveUIData(Lpantanal/app/bean/PantanalUIData;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lpantanal/app/bean/PantanalUIData;

    invoke-virtual {p0, p1}, Lpantanal/app/seedling/SeedlingCardImpl$onDragEnd$1;->invoke(Lpantanal/app/bean/PantanalUIData;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lpantanal/app/bean/PantanalUIData;)V
    .registers 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lpantanal/app/seedling/SeedlingCardImpl;

    invoke-static {p0, p1}, Lpantanal/app/seedling/SeedlingCardImpl;->access$receiveUIData(Lpantanal/app/seedling/SeedlingCardImpl;Lpantanal/app/bean/PantanalUIData;)V

    return-void
.end method
