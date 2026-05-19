.class public final Lv5/o;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Li5/u0;",
        "Li5/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lv5/o;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv5/o;

    invoke-direct {v0}, Lv5/o;-><init>()V

    sput-object v0, Lv5/o;->a:Lv5/o;

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

    check-cast p1, Li5/u0;

    const-string p0, "$this$selectMostSpecificInEachOverridableGroup"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
