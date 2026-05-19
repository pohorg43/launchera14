.class public final Lu5/b$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu5/b;->d(Lu5/g;Lj5/h;)Lu5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lr5/b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu5/g;

.field public final synthetic b:Lj5/h;


# direct methods
.method public constructor <init>(Lu5/g;Lj5/h;)V
    .registers 3

    iput-object p1, p0, Lu5/b$a;->a:Lu5/g;

    iput-object p2, p0, Lu5/b$a;->b:Lj5/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lu5/b$a;->a:Lu5/g;

    iget-object p0, p0, Lu5/b$a;->b:Lj5/h;

    invoke-static {v0, p0}, Lu5/b;->c(Lu5/g;Lj5/h;)Lr5/b0;

    move-result-object p0

    return-object p0
.end method
