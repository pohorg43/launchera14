.class public final Lv5/r$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/r;->o(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lr6/i;",
        "Ljava/util/Collection<",
        "+",
        "Lh6/f;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lv5/r$b;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv5/r$b;

    invoke-direct {v0}, Lv5/r$b;-><init>()V

    sput-object v0, Lv5/r$b;->a:Lv5/r$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lr6/i;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lr6/i;->d()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
