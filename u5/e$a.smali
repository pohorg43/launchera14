.class public final Lu5/e$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/e;-><init>(Lu5/g;Ly5/d;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ly5/a;",
        "Lj5/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu5/e;


# direct methods
.method public constructor <init>(Lu5/e;)V
    .registers 2

    iput-object p1, p0, Lu5/e$a;->a:Lu5/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ly5/a;

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ls5/c;->a:Ls5/c;

    iget-object p0, p0, Lu5/e$a;->a:Lu5/e;

    iget-object v1, p0, Lu5/e;->a:Lu5/g;

    iget-boolean p0, p0, Lu5/e;->c:Z

    invoke-virtual {v0, p1, v1, p0}, Ls5/c;->b(Ly5/a;Lu5/g;Z)Lj5/c;

    move-result-object p0

    return-object p0
.end method
