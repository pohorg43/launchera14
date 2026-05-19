.class public final Lr6/n$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr6/n;-><init>(Lr6/i;Ly6/x1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/x1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/x1;


# direct methods
.method public constructor <init>(Ly6/x1;)V
    .registers 2

    iput-object p1, p0, Lr6/n$b;->a:Ly6/x1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lr6/n$b;->a:Ly6/x1;

    invoke-virtual {p0}, Ly6/x1;->g()Ly6/t1;

    move-result-object p0

    invoke-virtual {p0}, Ly6/t1;->c()Ly6/x1;

    move-result-object p0

    return-object p0
.end method
