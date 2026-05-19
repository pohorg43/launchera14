.class public final Lu5/h$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/h;-><init>(Lu5/g;Li5/l;Ly5/z;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly5/y;",
        "Lv5/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu5/h;


# direct methods
.method public constructor <init>(Lu5/h;)V
    .registers 2

    iput-object p1, p0, Lu5/h$a;->a:Lu5/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    check-cast p1, Ly5/y;

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lu5/h$a;->a:Lu5/h;

    iget-object v0, v0, Lu5/h;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_43

    iget-object p0, p0, Lu5/h$a;->a:Lu5/h;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    new-instance v1, Lv5/v;

    iget-object v2, p0, Lu5/h;->a:Lu5/g;

    const-string v3, "<this>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "typeParameterResolver"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lu5/g;

    iget-object v4, v2, Lu5/g;->a:Lu5/c;

    iget-object v2, v2, Lu5/g;->c:Lh4/f;

    invoke-direct {v3, v4, p0, v2}, Lu5/g;-><init>(Lu5/c;Lu5/k;Lh4/f;)V

    iget-object v2, p0, Lu5/h;->b:Li5/l;

    invoke-interface {v2}, Lj5/a;->getAnnotations()Lj5/h;

    move-result-object v2

    invoke-static {v3, v2}, Lu5/b;->d(Lu5/g;Lj5/h;)Lu5/g;

    move-result-object v2

    iget v3, p0, Lu5/h;->c:I

    add-int/2addr v3, v0

    iget-object p0, p0, Lu5/h;->b:Li5/l;

    invoke-direct {v1, v2, p1, v3, p0}, Lv5/v;-><init>(Lu5/g;Ly5/y;ILi5/l;)V

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    return-object v1
.end method
