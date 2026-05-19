.class public final Lr6/i$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr6/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lr6/i$a;

.field public static final b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr6/i$a;

    invoke-direct {v0}, Lr6/i$a;-><init>()V

    sput-object v0, Lr6/i$a;->a:Lr6/i$a;

    sget-object v0, Lr6/i$a$a;->a:Lr6/i$a$a;

    sput-object v0, Lr6/i$a;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
