.class public final Lv5/k$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv5/k;-><init>(Lu5/g;Ly5/u;Lv5/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu5/g;

.field public final synthetic b:Lv5/k;


# direct methods
.method public constructor <init>(Lu5/g;Lv5/k;)V
    .registers 3

    iput-object p1, p0, Lv5/k$d;->a:Lu5/g;

    iput-object p2, p0, Lv5/k$d;->b:Lv5/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lv5/k$d;->a:Lu5/g;

    iget-object v0, v0, Lu5/g;->a:Lu5/c;

    iget-object v0, v0, Lu5/c;->b:Lr5/s;

    iget-object p0, p0, Lv5/k$d;->b:Lv5/k;

    iget-object p0, p0, Lv5/k;->o:Lv5/j;

    iget-object p0, p0, Ll5/c0;->e:Lh6/c;

    invoke-interface {v0, p0}, Lr5/s;->a(Lh6/c;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
