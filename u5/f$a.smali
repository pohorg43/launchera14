.class public final Lu5/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/f;->d(Lh6/c;)Lv5/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lv5/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu5/f;

.field public final synthetic b:Ly5/u;


# direct methods
.method public constructor <init>(Lu5/f;Ly5/u;)V
    .registers 3

    iput-object p1, p0, Lu5/f$a;->a:Lu5/f;

    iput-object p2, p0, Lu5/f$a;->b:Ly5/u;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lv5/j;

    iget-object v1, p0, Lu5/f$a;->a:Lu5/f;

    iget-object v1, v1, Lu5/f;->a:Lu5/g;

    iget-object p0, p0, Lu5/f$a;->b:Ly5/u;

    invoke-direct {v0, v1, p0}, Lv5/j;-><init>(Lu5/g;Ly5/u;)V

    return-object v0
.end method
