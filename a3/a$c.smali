.class public final La3/a$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La3/a;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "La3/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:La3/a$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La3/a$c;

    invoke-direct {v0}, La3/a$c;-><init>()V

    sput-object v0, La3/a$c;->a:La3/a$c;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 1

    new-instance p0, La3/b;

    invoke-direct {p0}, La3/b;-><init>()V

    return-object p0
.end method
