.class public final Lu6/a$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu6/a;-><init>(Lx6/m;Lu6/t;Li5/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lh6/c;",
        "Li5/h0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu6/a;


# direct methods
.method public constructor <init>(Lu6/a;)V
    .registers 2

    iput-object p1, p0, Lu6/a$a;->a:Lu6/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh6/c;

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu6/a$a;->a:Lu6/a;

    invoke-virtual {v0, p1}, Lu6/a;->d(Lh6/c;)Lu6/o;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    iget-object p0, p0, Lu6/a$a;->a:Lu6/a;

    iget-object p0, p0, Lu6/a;->d:Lu6/k;

    if-eqz p0, :cond_18

    move-object v0, p0

    goto :goto_1d

    :cond_18
    const-string p0, "components"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :goto_1d
    invoke-virtual {p1, v0}, Lu6/o;->D0(Lu6/k;)V

    goto :goto_22

    :cond_21
    move-object p1, v0

    :goto_22
    return-object p1
.end method
