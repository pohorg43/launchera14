.class public final Lm7/w2;
.super Ll4/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/w2$a;
    }
.end annotation


# static fields
.field public static final b:Lm7/w2$a;


# instance fields
.field public a:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm7/w2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm7/w2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lm7/w2;->b:Lm7/w2$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lm7/w2;->b:Lm7/w2$a;

    invoke-direct {p0, v0}, Ll4/a;-><init>(Ll4/f$b;)V

    return-void
.end method
